.class final Landroid/widget/GridLayout$4;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2627
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2635
    return p2
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    .prologue
    .line 2630
    return p2
.end method