.class final Landroid/view/ViewRootImpl$SyntheticKeyHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticKeyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .prologue
    .line 4846
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticKeyHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/KeyEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v0, 0x17

    const/4 v6, 0x4

    .line 4853
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_54

    .line 4891
    :goto_a
    const/4 v0, 0x0

    .line 4898
    :goto_b
    return v0

    .line 4858
    :sswitch_c
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticKeyHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v1, Landroid/view/ViewRootImpl;->mFlipControllerFallbackKeys:Z

    if-eqz v1, :cond_44

    .line 4894
    .local v6, "keyCode":I
    :goto_12
    iget-object v13, p0, Landroid/view/ViewRootImpl$SyntheticKeyHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    or-int/lit16 v11, v11, 0x400

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v13, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4898
    const/4 v0, 0x1

    goto :goto_b

    .end local v6    # "keyCode":I
    :cond_44
    move v6, v0

    .line 4858
    goto :goto_12

    .line 4863
    :sswitch_46
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticKeyHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v1, Landroid/view/ViewRootImpl;->mFlipControllerFallbackKeys:Z

    if-eqz v1, :cond_4d

    move v6, v0

    .line 4865
    .restart local v6    # "keyCode":I
    :cond_4d
    goto :goto_12

    .line 4885
    .end local v6    # "keyCode":I
    :sswitch_4e
    const/16 v6, 0x17

    .line 4886
    .restart local v6    # "keyCode":I
    goto :goto_12

    .line 4889
    .end local v6    # "keyCode":I
    :sswitch_51
    const/16 v6, 0x52

    .restart local v6    # "keyCode":I
    goto :goto_a

    .line 4853
    :sswitch_data_54
    .sparse-switch
        0x60 -> :sswitch_c
        0x61 -> :sswitch_46
        0x62 -> :sswitch_c
        0x63 -> :sswitch_c
        0x64 -> :sswitch_46
        0x65 -> :sswitch_c
        0x6a -> :sswitch_4e
        0x6b -> :sswitch_4e
        0x6c -> :sswitch_4e
        0x6d -> :sswitch_51
        0x6e -> :sswitch_51
        0xbc -> :sswitch_4e
        0xbd -> :sswitch_4e
        0xbe -> :sswitch_4e
        0xbf -> :sswitch_4e
        0xc0 -> :sswitch_4e
        0xc1 -> :sswitch_4e
        0xc2 -> :sswitch_4e
        0xc3 -> :sswitch_4e
        0xc4 -> :sswitch_4e
        0xc5 -> :sswitch_4e
        0xc6 -> :sswitch_4e
        0xc7 -> :sswitch_4e
        0xc8 -> :sswitch_4e
        0xc9 -> :sswitch_4e
        0xca -> :sswitch_4e
        0xcb -> :sswitch_4e
    .end sparse-switch
.end method
