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

#ifndef SRC_AST_ALIAS_H_
#define SRC_AST_ALIAS_H_

#include <string>

#include "src/ast/type.h"

namespace tint {
namespace ast {

/// A type alias type. Holds a name and pointer to another type.
class Alias : public Castable<Alias, Type> {
 public:
  /// Constructor
  /// @param program_id the identifier of the program that owns this node
  /// @param source the source of this node
  /// @param sym the symbol for the alias
  /// @param subtype the alias'd type
  Alias(ProgramID program_id,
        const Source& source,
        const Symbol& sym,
        Type* subtype);
  /// Move constructor
  Alias(Alias&&);
  /// Destructor
  ~Alias() override;

  /// @returns the alias symbol
  Symbol symbol() const { return symbol_; }
  /// @returns the alias type
  Type* type() const { return subtype_; }

  /// @returns the type_name for this type
  std::string type_name() const override;

  /// @param symbols the program's symbol table
  /// @returns the name for this type that closely resembles how it would be
  /// declared in WGSL.
  std::string FriendlyName(const SymbolTable& symbols) const override;

  /// Clones this type and all transitive types using the `CloneContext` `ctx`.
  /// @param ctx the clone context
  /// @return the newly cloned type
  Alias* Clone(CloneContext* ctx) const override;

 private:
  Symbol const symbol_;
  Type* const subtype_;
  std::string const type_name_;
};

}  // namespace ast
}  // namespace tint

#endif  // SRC_AST_ALIAS_H_
