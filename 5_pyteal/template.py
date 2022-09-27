from pyteal import *
from pyteal.ast.bytes import Bytes

# recommended way
def approval():
  return Seq(
    Return(Int(1))
  )

def clear():
  return Return(
    Int(1)
  )

if __name__ == '__main__':
  import os

  path = os.path.dirname(os.path.abspath(__file__))

  with open(os.path.join(path, "approval.teal"), "w") as f:
    f.write(compileTeal(approval(), mode=Mode.Application, version=6))
  with open(os.path.join(path, "clear.teal"), "w") as f:
    f.write(compileTeal(clear(), mode=Mode.Application, version=6))