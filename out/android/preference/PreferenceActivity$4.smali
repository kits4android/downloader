.class Landroid/preference/PreferenceActivity$4;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .registers 2

    .prologue
    .line 626
    iput-object p1, p0, Landroid/preference/PreferenceActivity$4;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 628
    iget-object v0, p0, Landroid/preference/PreferenceActivity$4;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setResult(I)V

    .line 629
    iget-object v0, p0, Landroid/preference/PreferenceActivity$4;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 630
    return-void
.end method