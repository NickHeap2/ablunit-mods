USING OpenEdge.Core.Assert.
USING Progress.Json.ObjectModel.*.
USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS test_Failure:

  DEFINE VARIABLE testCount AS INTEGER NO-UNDO.

  @Setup.
  METHOD PUBLIC VOID setUp(  ):

  END METHOD.

  @Test.
  METHOD PUBLIC VOID canShowFailures(  ):
/*    Assert:Equals(TRUE, FALSE).*/
  END METHOD.

  @TearDown.
  METHOD PUBLIC VOID tearDown(  ):

  END METHOD.

END CLASS.