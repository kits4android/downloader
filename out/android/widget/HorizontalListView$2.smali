.class Landroid/widget/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/HorizontalListView;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalListView;->requestLayout()V

    .line 202
    return-void
.end method
