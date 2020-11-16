// Copyright 2020 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/ast/type_constructor_expression.h"

#include <memory>
#include <sstream>

#include "src/ast/constructor_expression.h"
#include "src/ast/identifier_expression.h"
#include "src/ast/test_helper.h"
#include "src/ast/type/f32_type.h"
#include "src/ast/type/vector_type.h"

namespace tint {
namespace ast {
namespace {

using TypeConstructorExpressionTest = TestHelper;

TEST_F(TypeConstructorExpressionTest, Creation) {
  type::F32Type f32;
  ExpressionList expr;
  expr.push_back(create<IdentifierExpression>("expr"));
  auto* expr_ptr = expr[0].get();

  TypeConstructorExpression t(&f32, std::move(expr));
  EXPECT_EQ(t.type(), &f32);
  ASSERT_EQ(t.values().size(), 1u);
  EXPECT_EQ(t.values()[0].get(), expr_ptr);
}

TEST_F(TypeConstructorExpressionTest, Creation_WithSource) {
  type::F32Type f32;
  ExpressionList expr;
  expr.push_back(create<IdentifierExpression>("expr"));

  TypeConstructorExpression t(Source{Source::Location{20, 2}}, &f32,
                              std::move(expr));
  auto src = t.source();
  EXPECT_EQ(src.range.begin.line, 20u);
  EXPECT_EQ(src.range.begin.column, 2u);
}

TEST_F(TypeConstructorExpressionTest, IsTypeConstructor) {
  TypeConstructorExpression t;
  EXPECT_TRUE(t.IsTypeConstructor());
}

TEST_F(TypeConstructorExpressionTest, IsValid) {
  type::F32Type f32;
  ExpressionList expr;
  expr.push_back(create<IdentifierExpression>("expr"));

  TypeConstructorExpression t(&f32, std::move(expr));
  EXPECT_TRUE(t.IsValid());
}

TEST_F(TypeConstructorExpressionTest, IsValid_EmptyValue) {
  type::F32Type f32;
  ExpressionList expr;

  TypeConstructorExpression t(&f32, std::move(expr));
  EXPECT_TRUE(t.IsValid());
}

TEST_F(TypeConstructorExpressionTest, IsValid_NullType) {
  ExpressionList expr;
  expr.push_back(create<IdentifierExpression>("expr"));

  TypeConstructorExpression t;
  t.set_values(std::move(expr));
  EXPECT_FALSE(t.IsValid());
}

TEST_F(TypeConstructorExpressionTest, IsValid_NullValue) {
  type::F32Type f32;
  ExpressionList expr;
  expr.push_back(create<IdentifierExpression>("expr"));
  expr.push_back(nullptr);

  TypeConstructorExpression t(&f32, std::move(expr));
  EXPECT_FALSE(t.IsValid());
}

TEST_F(TypeConstructorExpressionTest, IsValid_InvalidValue) {
  type::F32Type f32;
  ExpressionList expr;
  expr.push_back(create<IdentifierExpression>(""));

  TypeConstructorExpression t(&f32, std::move(expr));
  EXPECT_FALSE(t.IsValid());
}

TEST_F(TypeConstructorExpressionTest, ToStr) {
  type::F32Type f32;
  type::VectorType vec(&f32, 3);
  ExpressionList expr;
  expr.push_back(create<IdentifierExpression>("expr_1"));
  expr.push_back(create<IdentifierExpression>("expr_2"));
  expr.push_back(create<IdentifierExpression>("expr_3"));

  TypeConstructorExpression t(&vec, std::move(expr));
  std::ostringstream out;
  t.to_str(out, 2);
  EXPECT_EQ(out.str(), R"(  TypeConstructor[not set]{
    __vec_3__f32
    Identifier[not set]{expr_1}
    Identifier[not set]{expr_2}
    Identifier[not set]{expr_3}
  }
)");
}

}  // namespace
}  // namespace ast
}  // namespace tint
