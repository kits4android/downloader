.class Landroid/media/AudioManager$FocusEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field final synthetic val$this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$FocusEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1966
    iput-object p1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1969
    const/4 v0, 0x0

    .line 1970
    .local v0, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    iget-object v1, v1, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioManager;->access$000(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1971
    :try_start_a
    iget-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    iget-object v3, v1, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v3, v1}, Landroid/media/AudioManager;->access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    .line 1972
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1f

    .line 1973
    if-eqz v0, :cond_1e

    .line 1974
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 1976
    :cond_1e
    return-void

    .line 1972
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method
