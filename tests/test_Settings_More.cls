USING OpenEdge.Core.Assert.
USING Progress.Json.ObjectModel.*.
USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS test_Settings_More:

  @Setup.
  METHOD PUBLIC VOID setUp(  ):

  END METHOD.

  @Test.
  METHOD PUBLIC VOID canRunTest1(  ):

    Assert:IsTrue(TRUE).

  END METHOD.

  @Test.
  @Ignore.
  METHOD PUBLIC VOID canIgnoreTest2(  ):

    Assert:IsTrue(TRUE).

  END METHOD.

  @Test.
  METHOD PUBLIC VOID canRunTest3(  ):

    Assert:IsTrue(TRUE).

  END METHOD.

  @TearDown.
  METHOD PUBLIC VOID tearDown(  ):

  END METHOD.

END CLASS.