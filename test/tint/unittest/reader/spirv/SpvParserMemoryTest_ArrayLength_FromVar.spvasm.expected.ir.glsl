SKIP: FAILED

<dawn>/src/tint/lang/glsl/writer/printer/printer.cc:509:16: runtime error: member call on null pointer of type 'tint::core::constant::Value'
SUMMARY: UndefinedBehaviorSanitizer: undefined-behavior <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:509:16 in 
AddressSanitizer:DEADLYSIGNAL
=================================================================
==1765926==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x561d9778a4d3 bp 0x7ffc48a1e180 sp 0x7ffc48a1dfa0 T0)
==1765926==The signal is caused by a READ memory access.
==1765926==Hint: address points to the zero page.
    #0 0x561d9778a4d3 in tint::glsl::writer::(anonymous namespace)::Printer::EmitConstant(tint::StringStream&, tint::core::constant::Value const*) <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:509:16
    #1 0x561d9779d17c in tint::glsl::writer::(anonymous namespace)::Printer::EmitZeroValue(tint::StringStream&, tint::core::type::Type const*) <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:470:9
    #2 0x561d9779cfd1 in tint::glsl::writer::(anonymous namespace)::Printer::EmitVar(tint::StringStream&, tint::core::ir::Var const*) <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:461:13
    #3 0x561d9779c72f in tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Var const*)::operator()(tint::core::ir::Var const*) const <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:239:47
    #4 0x561d97787704 in auto auto tint::Switch<tint::detail::Infer, tint::core::ir::Instruction const, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Call const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Let const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Return const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Unreachable const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Var const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::NextIteration const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::ExitIf const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Access const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Bitcast const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Construct const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::CoreBinary const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::CoreUnary const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Load const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::LoadVectorElement const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Swizzle const*), tint::SwitchMustMatchCase>(tint::core::ir::Instruction const*, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Call const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Let const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Return const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Unreachable const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Var const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::NextIteration const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::ExitIf const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Access const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Bitcast const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Construct const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::CoreBinary const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::CoreUnary const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Load const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::LoadVectorElement const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Swizzle const*)&&, tint::SwitchMustMatchCase&&)::'lambda'(auto&&)::operator()<tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Var const*)>(auto&&) const <dawn>/src/tint/utils/rtti/switch.h:347:25
    #5 0x561d97786a63 in auto tint::Switch<tint::detail::Infer, tint::core::ir::Instruction const, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Call const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Let const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Return const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Unreachable const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Var const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::NextIteration const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::ExitIf const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Access const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Bitcast const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Construct const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::CoreBinary const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::CoreUnary const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Load const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::LoadVectorElement const*), tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Swizzle const*), tint::SwitchMustMatchCase>(tint::core::ir::Instruction const*, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Call const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Let const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Return const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Unreachable const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Var const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::NextIteration const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::ExitIf const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Access const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Bitcast const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Construct const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::CoreBinary const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::CoreUnary const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Load const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::LoadVectorElement const*)&&, tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*)::'lambda'(tint::core::ir::Swizzle const*)&&, tint::SwitchMustMatchCase&&) <dawn>/src/tint/utils/rtti/switch.h:358:22
    #6 0x561d9778493a in tint::glsl::writer::(anonymous namespace)::Printer::EmitBlock(tint::core::ir::Block const*) <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:233:13
    #7 0x561d97783b21 in tint::glsl::writer::(anonymous namespace)::Printer::Generate[abi:cxx11](tint::glsl::writer::Version const&) <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:105:9
    #8 0x561d9778302b in tint::glsl::writer::Print[abi:cxx11](tint::core::ir::Module&, tint::glsl::writer::Version const&) <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:596:28
    #9 0x561d972cfebb in tint::glsl::writer::Generate(tint::core::ir::Module&, tint::glsl::writer::Options const&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>> const&) <dawn>/src/tint/lang/glsl/writer/writer.cc:48:19
    #10 0x561d96aeb455 in (anonymous namespace)::GenerateGlsl(tint::Program const&, (anonymous namespace)::Options const&)::$_0::operator()(tint::Program const&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>, tint::ast::PipelineStage) const <dawn>/src/tint/cmd/tint/main.cc:1100:22
    #11 0x561d96ad3d35 in (anonymous namespace)::GenerateGlsl(tint::Program const&, (anonymous namespace)::Options const&) <dawn>/src/tint/cmd/tint/main.cc:1157:20
    #12 0x561d96abb861 in main <dawn>/src/tint/cmd/tint/main.cc:1434:23
    #13 0x7f6a54643b89 in __libc_start_call_main csu/../sysdeps/nptl/libc_start_call_main.h:58:16
    #14 0x7f6a54643c44 in __libc_start_main csu/../csu/libc-start.c:360:3
    #15 0x561d969e0000 in _start (<dawn>/out/Debug/tint+0x2b08000) (BuildId: e8af56752221240d6aa5bbe38e8d6c485d94acd9)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV <dawn>/src/tint/lang/glsl/writer/printer/printer.cc:509:16 in tint::glsl::writer::(anonymous namespace)::Printer::EmitConstant(tint::StringStream&, tint::core::constant::Value const*)
==1765926==ABORTING

tint executable returned error: exit status 1
