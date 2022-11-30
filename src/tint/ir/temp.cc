// Copyright 2022 The Tint Authors.
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

#include "src/tint/ir/temp.h"

#include <string>

TINT_INSTANTIATE_TYPEINFO(tint::ir::Temp);

namespace tint::ir {

Temp::Temp(Id id) : id_(id) {}

Temp::~Temp() = default;

std::ostream& Temp::ToString(std::ostream& out) const {
    out << "%" << std::to_string(AsId());
    return out;
}

}  // namespace tint::ir
