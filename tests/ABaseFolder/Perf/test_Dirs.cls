USING OpenEdge.Core.Assert.
USING Progress.Json.ObjectModel.*.
USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

@Only.
CLASS ABaseFolder.Perf.test_Dirs:

  @Setup.
  METHOD PUBLIC VOID setUp(  ):

  END METHOD.

  @Test.
  METHOD PUBLIC VOID canRunInAFolder(  ):

    Assert:IsTrue(TRUE).

  END METHOD.

  @TearDown.
  METHOD PUBLIC VOID tearDown(  ):

  END METHOD.

END CLASS.