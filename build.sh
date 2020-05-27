git submodule update --init
g++ -O2 -pthread -I. -I./RandomX -I./rxmonero -o testheader \
  RandomX/src/aes_hash.cpp \
  RandomX/src/argon2_ref.c \
  RandomX/src/argon2_ssse3.c \
  RandomX/src/argon2_avx2.c \
  RandomX/src/bytecode_machine.cpp \
  RandomX/src/cpu.cpp \
  RandomX/src/dataset.cpp \
  RandomX/src/soft_aes.cpp \
  RandomX/src/virtual_memory.cpp \
  RandomX/src/vm_interpreted.cpp \
  RandomX/src/allocator.cpp \
  RandomX/src/assembly_generator_x86.cpp \
  RandomX/src/instruction.cpp \
  RandomX/src/randomx.cpp \
  RandomX/src/superscalar.cpp \
  RandomX/src/vm_compiled.cpp \
  RandomX/src/vm_interpreted_light.cpp \
  RandomX/src/argon2_core.c \
  RandomX/src/blake2_generator.cpp \
  RandomX/src/instructions_portable.cpp \
  RandomX/src/reciprocal.c \
  RandomX/src/virtual_machine.cpp \
  RandomX/src/vm_compiled_light.cpp \
  RandomX/src/blake2/blake2b.c \
  RandomX/src/jit_compiler_x86.cpp \
  RandomX/src/jit_compiler_x86_static.S \
  rxmonero/rx-slow-hash.c \
  util/uint256.cpp \
  util/strencodings.cpp \
  main.cpp

