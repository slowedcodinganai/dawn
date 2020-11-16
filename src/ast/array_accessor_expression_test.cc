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

#include "src/ast/array_accessor_expression.h"

#include "src/ast/identifier_expression.h"
#include "src/ast/test_helper.h"

namespace tint {
namespace ast {
namespace {

using ArrayAccessorExpressionTest = TestHelper;

TEST_F(ArrayAccessorExpressionTest, Create) {
  auto ary = create<IdentifierExpression>("ary");
  auto idx = create<IdentifierExpression>("idx");

  auto* ary_ptr = ary.get();
  auto* idx_ptr = idx.get();

  ArrayAccessorExpression exp(std::move(ary), std::move(idx));
  ASSERT_EQ(exp.array(), ary_ptr);
  ASSERT_EQ(exp.idx_expr(), idx_ptr);
}
TEST_F(ArrayAccessorExpressionTest, CreateWithSource) {
  auto ary = create<IdentifierExpression>("ary");
  auto idx = create<IdentifierExpression>("idx");

  ArrayAccessorExpression exp(Source{Source::Location{20, 2}}, std::move(ary),
                              std::move(idx));
  auto src = exp.source();
  EXPECT_EQ(src.range.begin.line, 20u);
  EXPECT_EQ(src.range.begin.column, 2u);
}

TEST_F(ArrayAccessorExpressionTest, IsArrayAccessor) {
  ArrayAccessorExpression exp;
  EXPECT_TRUE(exp.IsArrayAccessor());
}

TEST_F(ArrayAccessorExpressionTest, IsValid) {
  auto ary = create<IdentifierExpression>("ary");
  auto idx = create<IdentifierExpression>("idx");

  ArrayAccessorExpression exp(std::move(ary), std::move(idx));
  EXPECT_TRUE(exp.IsValid());
}

TEST_F(ArrayAccessorExpressionTest, IsValid_MissingArray) {
  auto idx = create<IdentifierExpression>("idx");

  ArrayAccessorExpression exp;
  exp.set_idx_expr(std::move(idx));
  EXPECT_FALSE(exp.IsValid());
}

TEST_F(ArrayAccessorExpressionTest, IsValid_MissingIndex) {
  auto ary = create<IdentifierExpression>("ary");

  ArrayAccessorExpression exp;
  exp.set_array(std::move(ary));
  EXPECT_FALSE(exp.IsValid());
}

TEST_F(ArrayAccessorExpressionTest, IsValid_InvalidArray) {
  auto ary = create<IdentifierExpression>("");
  auto idx = create<IdentifierExpression>("idx");
  ArrayAccessorExpression exp(std::move(ary), std::move(idx));
  EXPECT_FALSE(exp.IsValid());
}

TEST_F(ArrayAccessorExpressionTest, IsValid_InvalidIndex) {
  auto ary = create<IdentifierExpression>("ary");
  auto idx = create<IdentifierExpression>("");
  ArrayAccessorExpression exp(std::move(ary), std::move(idx));
  EXPECT_FALSE(exp.IsValid());
}

TEST_F(ArrayAccessorExpressionTest, ToStr) {
  auto ary = create<IdentifierExpression>("ary");
  auto idx = create<IdentifierExpression>("idx");

  ArrayAccessorExpression exp(std::move(ary), std::move(idx));
  std::ostringstream out;
  exp.to_str(out, 2);

  EXPECT_EQ(out.str(), R"(  ArrayAccessor[not set]{
    Identifier[not set]{ary}
    Identifier[not set]{idx}
  }
)");
}

}  // namespace
}  // namespace ast
}  // namespace tint
