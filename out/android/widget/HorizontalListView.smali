.class public Landroid/widget/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMargin:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->mAlwaysOverrideTouch:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    .line 51
    iput v1, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    .line 54
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/HorizontalListView;->mMaxX:I

    .line 55
    iput v1, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 62
    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    .line 63
    iput v1, p0, Landroid/widget/HorizontalListView;->mMargin:I

    .line 96
    new-instance v0, Landroid/widget/HorizontalListView$1;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$1;-><init>(Landroid/widget/HorizontalListView;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 314
    new-instance v0, Landroid/widget/HorizontalListView$3;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$3;-><init>(Landroid/widget/HorizontalListView;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 67
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->initView()V

    .line 68
    return-void
.end method

.method static synthetic access$002(Landroid/widget/HorizontalListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/HorizontalListView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/HorizontalListView;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalListView;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/HorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalListView;

    .prologue
    .line 46
    iget v0, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalListView;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalListView;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x80000000

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 150
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_e

    .line 151
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 154
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 155
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 157
    return-void
.end method

.method private fillList(I)V
    .registers 5
    .param p1, "dx"    # I

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "edge":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 214
    :cond_11
    invoke-direct {p0, v1, p1}, Landroid/widget/HorizontalListView;->fillListRight(II)V

    .line 216
    const/4 v1, 0x0

    .line 217
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_20

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 221
    :cond_20
    invoke-direct {p0, v1, p1}, Landroid/widget/HorizontalListView;->fillListLeft(II)V

    .line 223
    return-void
.end method

.method private fillListLeft(II)V
    .registers 7
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 245
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_31

    iget v1, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    if-ltz v1, :cond_31

    .line 246
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 249
    iget v1, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    .line 250
    iget v1, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 252
    .end local v0    # "child":Landroid/view/View;
    :cond_31
    return-void
.end method

.method private fillListRight(II)V
    .registers 7
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 226
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_4f

    iget v1, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 228
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "child":Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 232
    iget v1, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_41

    .line 233
    iget v1, p0, Landroid/widget/HorizontalListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/HorizontalListView;->mMaxX:I

    .line 236
    :cond_41
    iget v1, p0, Landroid/widget/HorizontalListView;->mMaxX:I

    if-gez v1, :cond_48

    .line 237
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/HorizontalListView;->mMaxX:I

    .line 239
    :cond_48
    iget v1, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    .line 242
    .end local v0    # "child":Landroid/view/View;
    :cond_4f
    return-void
.end method

.method private declared-synchronized initView()V
    .registers 4

    .prologue
    .line 71
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->mCurrentX:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->mNextX:I

    .line 76
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/HorizontalListView;->mMaxX:I

    .line 77
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 78
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2f

    .line 79
    monitor-exit p0

    return-void

    .line 71
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .registers 9
    .param p1, "dx"    # I

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2f

    .line 276
    iget v4, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    .line 277
    iget v3, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    .line 278
    .local v3, "left":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 279
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 281
    .local v1, "childWidth":I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 285
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childWidth":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_2f
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .registers 6
    .param p1, "dx"    # I

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "child":Landroid/view/View;
    :goto_5
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_2a

    .line 257
    iget v1, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/HorizontalListView;->mDisplayOffset:I

    .line 258
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 260
    iget v1, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/HorizontalListView;->mLeftViewIndex:I

    .line 261
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 265
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    :goto_34
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_5a

    .line 267
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 269
    iget v1, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/HorizontalListView;->mRightViewIndex:I

    .line 270
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_34

    .line 272
    :cond_5a
    return-void
.end method

.method private declared-synchronized reset()V
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->initView()V

    .line 139
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 140
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 141
    monitor-exit p0

    return-void

    .line 138
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 295
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 296
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 310
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 311
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/widget/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 303
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    .line 304
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    .line 306
    const/4 v0, 0x1

    return v0

    .line 303
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 163
    iget-object v3, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_6c

    if-nez v3, :cond_a

    .line 206
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 167
    :cond_a
    :try_start_a
    iget-boolean v3, p0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    if-eqz v3, :cond_1b

    .line 168
    iget v1, p0, Landroid/widget/HorizontalListView;->mCurrentX:I

    .line 169
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->initView()V

    .line 170
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 171
    iput v1, p0, Landroid/widget/HorizontalListView;->mNextX:I

    .line 172
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    .line 175
    .end local v1    # "oldCurrentX":I
    :cond_1b
    iget-object v3, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 176
    iget-object v3, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 177
    .local v2, "scrollx":I
    iput v2, p0, Landroid/widget/HorizontalListView;->mNextX:I

    .line 180
    .end local v2    # "scrollx":I
    :cond_2b
    iget v3, p0, Landroid/widget/HorizontalListView;->mNextX:I

    if-gtz v3, :cond_38

    .line 181
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/HorizontalListView;->mNextX:I

    .line 182
    iget-object v3, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 184
    :cond_38
    iget v3, p0, Landroid/widget/HorizontalListView;->mNextX:I

    iget v4, p0, Landroid/widget/HorizontalListView;->mMaxX:I

    if-lt v3, v4, :cond_48

    .line 185
    iget v3, p0, Landroid/widget/HorizontalListView;->mMaxX:I

    iput v3, p0, Landroid/widget/HorizontalListView;->mNextX:I

    .line 186
    iget-object v3, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 189
    :cond_48
    iget v3, p0, Landroid/widget/HorizontalListView;->mCurrentX:I

    iget v4, p0, Landroid/widget/HorizontalListView;->mNextX:I

    sub-int v0, v3, v4

    .line 191
    .local v0, "dx":I
    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->removeNonVisibleItems(I)V

    .line 192
    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->fillList(I)V

    .line 193
    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->positionItems(I)V

    .line 195
    iget v3, p0, Landroid/widget/HorizontalListView;->mNextX:I

    iput v3, p0, Landroid/widget/HorizontalListView;->mCurrentX:I

    .line 197
    iget-object v3, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 198
    new-instance v3, Landroid/widget/HorizontalListView$2;

    invoke-direct {v3, p0}, Landroid/widget/HorizontalListView$2;-><init>(Landroid/widget/HorizontalListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_6b
    .catchall {:try_start_a .. :try_end_6b} :catchall_6c

    goto :goto_8

    .line 161
    .end local v0    # "dx":I
    :catchall_6c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized scrollTo(I)V
    .registers 7
    .param p1, "x"    # I

    .prologue
    .line 288
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/widget/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 289
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 290
    monitor-exit p0

    return-void

    .line 288
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 46
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 130
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 132
    :cond_b
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 133
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 134
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->reset()V

    .line 135
    return-void
.end method

.method public setMargin(I)V
    .registers 2
    .param p1, "margin"    # I

    .prologue
    .line 389
    iput p1, p0, Landroid/widget/HorizontalListView;->mMargin:I

    .line 390
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 89
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 93
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 94
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 84
    return-void
.end method

.method public setSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 146
    return-void
.end method
