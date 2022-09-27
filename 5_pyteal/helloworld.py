from pyteal import *
def approval_program():
  return Seq(
    Log(Bytes("Hello World")),
    Return(Int(1))
  )

print(compileTeal(approval_program(), mode=Mode.Application, version=6))
