USING OpenEdge.Core.Assert.
USING Progress.Json.ObjectModel.*.
USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS test_Settings:

  DEFINE VARIABLE testCount AS INTEGER NO-UNDO.

  @Setup.
  METHOD PUBLIC VOID setUp(  ):

  END METHOD.

  @Test.
  METHOD PUBLIC VOID canRunTest1(  ):

    testCount = testCount + 1.
    Assert:Equals("Not Run", "Run").

  END METHOD.

  @Test.
  METHOD PUBLIC VOID canRunTest2(  ):

    testCount = testCount + 2.
    Assert:Equals("Not Run", "Run").

  END METHOD.

  @Test.
  @Only. 
  METHOD PUBLIC VOID canRunTest3(  ):

    testCount = testCount + 4.
    Assert:Equals(4, testCount).

  END METHOD.

  @TearDown.
  METHOD PUBLIC VOID tearDown(  ):

  END METHOD.

END CLASS.