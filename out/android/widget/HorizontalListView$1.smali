.class Landroid/widget/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalListView;
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
    .line 96
    iput-object p1, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .prologue
    .line 100
    iget-object v1, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    monitor-enter v1

    .line 101
    :try_start_3
    iget-object v0, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    const/4 v2, 0x1

    # setter for: Landroid/widget/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v2}, Landroid/widget/HorizontalListView;->access$002(Landroid/widget/HorizontalListView;Z)Z

    .line 102
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 103
    iget-object v0, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 104
    iget-object v0, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalListView;->requestLayout()V

    .line 105
    return-void

    .line 102
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    # invokes: Landroid/widget/HorizontalListView;->reset()V
    invoke-static {v0}, Landroid/widget/HorizontalListView;->access$100(Landroid/widget/HorizontalListView;)V

    .line 110
    iget-object v0, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 111
    iget-object v0, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalListView;->requestLayout()V

    .line 112
    return-void
.end method
