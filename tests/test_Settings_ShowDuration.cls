USING OpenEdge.Core.Assert.
USING Progress.Json.ObjectModel.*.
USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS test_Settings_ShowDuration:

  DEFINE VARIABLE testCount AS INTEGER NO-UNDO.

  @Setup.
  METHOD PUBLIC VOID setUp(  ):

  END METHOD.

  @Test.
  METHOD PUBLIC VOID dontShowDuration(  ):

  END METHOD.

  @Test.
  @ShowDuration.
  METHOD PUBLIC VOID showDuration(  ):

  END METHOD.



  @TearDown.
  METHOD PUBLIC VOID tearDown(  ):

  END METHOD.

END CLASS.