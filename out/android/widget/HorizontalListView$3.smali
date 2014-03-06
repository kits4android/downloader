.class Landroid/widget/HorizontalListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    .line 314
    iput-object p1, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 11
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 376
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 377
    .local v5, "viewRect":Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 378
    .local v1, "childPosition":[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 379
    const/4 v6, 0x0

    aget v2, v1, v6

    .line 380
    .local v2, "left":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v3, v2, v6

    .line 381
    .local v3, "right":I
    const/4 v6, 0x1

    aget v4, v1, v6

    .line 382
    .local v4, "top":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v4, v6

    .line 383
    .local v0, "bottom":I
    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    return v6
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 318
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 324
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 361
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    .line 362
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-ge v7, v6, :cond_42

    .line 363
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 364
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/HorizontalListView$3;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 365
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Landroid/widget/HorizontalListView;->access$500(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 366
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Landroid/widget/HorizontalListView;->access$500(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    iget-object v3, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Landroid/widget/HorizontalListView;->access$300(Landroid/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    iget-object v4, v4, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Landroid/widget/HorizontalListView;->access$300(Landroid/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 373
    .end local v2    # "child":Landroid/view/View;
    :cond_42
    return-void

    .line 362
    .restart local v2    # "child":Landroid/view/View;
    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 331
    iget-object v1, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    monitor-enter v1

    .line 332
    :try_start_3
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/HorizontalListView;->mNextX:I

    .line 333
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 334
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalListView;->requestLayout()V

    .line 336
    const/4 v0, 0x1

    return v0

    .line 333
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 341
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_6f

    .line 342
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, v6}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 343
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/HorizontalListView$3;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 344
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Landroid/widget/HorizontalListView;->access$200(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 345
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Landroid/widget/HorizontalListView;->access$200(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    iget-object v3, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Landroid/widget/HorizontalListView;->access$300(Landroid/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    iget-object v4, v4, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Landroid/widget/HorizontalListView;->access$300(Landroid/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 348
    :cond_42
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Landroid/widget/HorizontalListView;->access$400(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 349
    iget-object v0, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Landroid/widget/HorizontalListView;->access$400(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    iget-object v3, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Landroid/widget/HorizontalListView;->access$300(Landroid/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    iget-object v4, v4, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Landroid/widget/HorizontalListView$3;->this$0:Landroid/widget/HorizontalListView;

    # getter for: Landroid/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Landroid/widget/HorizontalListView;->access$300(Landroid/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 356
    .end local v2    # "child":Landroid/view/View;
    :cond_6f
    const/4 v0, 0x1

    return v0

    .line 341
    .restart local v2    # "child":Landroid/view/View;
    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
