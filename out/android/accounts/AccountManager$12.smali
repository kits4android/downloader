.class Landroid/accounts/AccountManager$12;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountsCopy:[Landroid/accounts/Account;

.field final synthetic val$listener:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 4

    .prologue
    .line 1439
    iput-object p1, p0, Landroid/accounts/AccountManager$12;->this$0:Landroid/accounts/AccountManager;

    iput-object p2, p0, Landroid/accounts/AccountManager$12;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p3, p0, Landroid/accounts/AccountManager$12;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1442
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager$12;->this$0:Landroid/accounts/AccountManager;

    # getter for: Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/accounts/AccountManager;->access$100(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$12;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1443
    iget-object v1, p0, Landroid/accounts/AccountManager$12;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v2, p0, Landroid/accounts/AccountManager$12;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-interface {v1, v2}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_15} :catch_16

    .line 1450
    :cond_15
    :goto_15
    return-void

    .line 1445
    :catch_16
    move-exception v0

    .line 1448
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "AccountManager"

    const-string v2, "Can\'t update accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method