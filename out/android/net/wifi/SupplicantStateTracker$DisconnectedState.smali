.class Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$800(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;

    move-result-object v0

    .line 230
    .local v0, "message":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 232
    .local v1, "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$000(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3c

    .line 233
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to authenticate, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    const/4 v4, 0x3

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 237
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v2, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$002(Landroid/net/wifi/SupplicantStateTracker;I)I

    .line 246
    :cond_3b
    :goto_3b
    return-void

    .line 239
    :cond_3c
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v2}, Landroid/net/wifi/SupplicantStateTracker;->access$700(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3b

    .line 240
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Association getting rejected, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    const/4 v4, 0x4

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;II)V

    .line 244
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v2, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$702(Landroid/net/wifi/SupplicantStateTracker;I)I

    goto :goto_3b
.end method