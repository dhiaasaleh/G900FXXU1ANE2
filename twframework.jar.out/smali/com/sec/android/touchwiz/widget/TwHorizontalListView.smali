.class public Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.source "TwHorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field protected mShowAnimationOnDataChange:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    new-instance v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;)V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setDividerHeight(I)V

    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderDividersEnabled:Z

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterDividersEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mShowAnimationOnDataChange:Z

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    add-int/lit8 v2, p2, -0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    const/4 v6, 0x0

    add-int/lit8 v2, p2, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    :cond_4
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v5, v10, v11

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    const/16 v10, 0x42

    if-ne p1, v10, :cond_6

    add-int/lit8 v3, v7, -0x1

    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move v2, v5

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v2, v10

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v2, :cond_3

    const/4 v10, 0x0

    :goto_1
    return v10

    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v2

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ne v10, v11, :cond_5

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    :cond_7
    :goto_2
    if-gez v3, :cond_8

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_2

    :cond_8
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move v1, v4

    if-lez v8, :cond_9

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v1, v10

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v1, :cond_a

    const/4 v10, 0x0

    goto :goto_1

    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    const/4 v10, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v1, v10

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v10, :cond_c

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v4, v10

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v2, 0x11

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    if-lez p3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v11

    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v11, v9, :cond_1

    :cond_0
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v11, v9, :cond_a

    :cond_1
    const/4 v14, 0x0

    :goto_1
    return-object v14

    :cond_2
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v4, v15, v14

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v4, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    move v13, v4

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v10, 0x1

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v14, v15

    if-eqz v10, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v5, v15, v14

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v14, v5, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    move v13, v5

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v6

    if-ge v2, v6, :cond_b

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v13

    if-gtz v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->amountToScroll(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v13, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v10

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v2

    :cond_2
    if-eqz v4, :cond_d

    const/4 v9, 0x1

    :goto_3
    const/4 v13, -0x1

    if-eq v10, v13, :cond_4

    if-eqz v4, :cond_e

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1, v10, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    move v11, v10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v13, :cond_3

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    :cond_3
    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkSelectionChanged()V

    :cond_4
    if-lez v2, :cond_6

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->logActivity()V

    :cond_5
    const/16 v13, 0x11

    move/from16 v0, p1

    if-ne v0, v13, :cond_f

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->scrollListItemsBy(I)V

    const/4 v9, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v13, :cond_8

    if-nez v4, :cond_8

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v5, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v13

    if-lez v13, :cond_8

    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    :cond_8
    const/4 v13, -0x1

    if-ne v10, v13, :cond_9

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v12, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->hideSelector()V

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    :cond_9
    if-eqz v9, :cond_10

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V

    const/4 v13, 0x1

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v7, v13, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    if-ge v7, v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int v8, v13, v14

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    sub-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-double v15, v15

    const-wide v17, 0x3fb999999999999aL

    mul-double v15, v15, v17

    cmpg-double v13, v13, v15

    if-gez v13, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v13, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-double v15, v15

    const-wide v17, 0x3fb999999999999aL

    mul-double v15, v15, v17

    cmpg-double v13, v13, v15

    if-gez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_f
    neg-int v2, v2

    goto/16 :goto_5

    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->layoutChildren()V

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_4

    sparse-switch p1, :sswitch_data_0

    :cond_4
    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    packed-switch v0, :pswitch_data_0

    move v4, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_4

    move v1, p2

    :goto_2
    add-int/lit8 p2, v1, -0x1

    if-lez v1, :cond_4

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    move v1, p2

    goto :goto_2

    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_4

    move v1, p2

    :goto_4
    add-int/lit8 p2, v1, -0x1

    if-lez v1, :cond_4

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    move v1, p2

    goto :goto_4

    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x21

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x82

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->keyPressed()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    goto :goto_6

    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    sub-int v6, v0, v5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lez v6, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_2

    :cond_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    sub-int v6, v2, v7

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v4, v8, -0x1

    if-lez v6, :cond_2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    :cond_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    neg-int v8, v6

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9

    const/4 v3, 0x1

    sub-int v8, p2, p1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-gt v7, v8, :cond_0

    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    invoke-direct {p0, v6, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooHigh(I)V

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v7

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v0, p2

    invoke-direct {p0, v0, v7, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getRightSelectionPixel(III)I

    move-result v10

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v10, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v1, v8

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v1, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    neg-int v1, v9

    invoke-virtual {v11, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, v11, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooHigh(I)V

    :goto_1
    return-object v11

    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v8, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v8, v1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v10, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    if-eqz v5, :cond_1

    move-object v8, v6

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setVisibleRangeHint(II)V

    return-object v8
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 9

    const/4 v3, 0x1

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    sub-int v7, v0, v1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    if-eqz v5, :cond_1

    move-object v8, v6

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setVisibleRangeHint(II)V

    return-object v8
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooHigh(I)V

    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    :goto_2
    return-object v10

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    move-object v10, v8

    goto :goto_2

    :cond_4
    move-object v10, v9

    goto :goto_2
.end method

.method private findAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1

    move v0, p1

    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2

    move v0, p1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10

    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v0, 0x0

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v7, v8, v9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p3, v8

    const/16 v8, 0x11

    if-ne p2, v8, :cond_3

    move v2, v3

    move v6, v7

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, p1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v4

    if-eqz v1, :cond_1

    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    :cond_1
    if-eqz v5, :cond_2

    if-nez p4, :cond_5

    if-nez v0, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v5, v6, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    :cond_2
    return-void

    :cond_3
    move v2, v7

    move v6, v3

    move-object v1, p1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7

    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v3

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->playSoundEffect(I)V

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logActivity()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private logActivity(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const-string v3, "service.gate.enabled"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "CHECKED"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    instance-of v3, p1, Landroid/widget/RadioButton;

    if-eqz v3, :cond_4

    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CHECKED"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p2, :cond_5

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_5

    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MENUTEXT:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    instance-of v3, p1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "UNCHECKED"

    goto/16 :goto_2

    :cond_7
    const-string v3, "UNCHECKED"

    goto :goto_3
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8

    const/4 v6, -0x1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    const/16 v7, 0x42

    if-ne p1, v7, :cond_5

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    :goto_0
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v5, v1

    goto :goto_0

    :cond_2
    if-ge v5, v1, :cond_3

    move v5, v1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v4, v5

    :goto_2
    if-gt v4, v3, :cond_b

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    :cond_8
    if-le v5, v2, :cond_9

    move v5, v2

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v4, v5

    :goto_4
    if-lt v4, v1, :cond_b

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_b
    move v4, v6

    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    :goto_0
    return-object v8

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    goto :goto_0
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHeightMeasureSpec:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_1

    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->forceAdd:Z

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_1

    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getRightSelectionPixel(III)I

    move-result v15

    if-lez p3, :cond_2

    add-int/lit8 v4, v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int v5, v3, v9

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v15, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v3, v12

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v3, v15

    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    neg-int v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    neg-int v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    :goto_0
    return-object v16

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0

    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v12, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v12, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v15, v3

    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/lit8 v3, p4, 0x14

    if-ge v13, v3, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(II)I
    .locals 6

    const/16 v5, 0x42

    const/4 v2, -0x1

    if-ne p2, v5, :cond_2

    if-eq p1, v2, :cond_1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lt p1, v3, :cond_1

    add-int/lit8 v1, p1, 0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_4

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x1

    if-eq p1, v2, :cond_3

    if-gt p1, v0, :cond_3

    add-int/lit8 v1, p1, -0x1

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    if-ne p2, v5, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v2, v1, v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v6, Landroid/graphics/Rect;->top:I

    add-int v0, v3, v4

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v3, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v9, v10

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_0

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    :cond_1
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_4

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22

    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    if-nez v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_2

    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    if-eqz v17, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHeightMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v12, :cond_13

    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eqz p4, :cond_15

    move/from16 v6, p3

    :goto_a
    if-eqz v14, :cond_16

    add-int v7, v6, v18

    add-int v4, p5, v9

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_8
    return-void

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->forceAdd:Z

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    :cond_13
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto/16 :goto_8

    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_15
    sub-int v6, p3, v18

    goto/16 :goto_a

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingLeftFadingEdge()Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showingRightFadingEdge()Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 4

    const/4 v3, 0x0

    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->logActivity()V

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingStarted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingActive:Z

    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-eqz v27, :cond_a

    const/4 v12, 0x1

    :goto_0
    if-eqz v26, :cond_b

    const/4 v11, 0x1

    :goto_1
    if-lez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-eqz v11, :cond_11

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingTop:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingBottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    sub-int v32, v22, v32

    add-int/lit8 v18, v32, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isOpaque()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isOpaque()Z

    move-result v32

    if-nez v32, :cond_d

    const/4 v15, 0x1

    :goto_3
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsCacheColorOpaque:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCacheColorHint()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v14, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    sub-int v32, v32, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    move/from16 v33, v0

    add-int v24, v32, v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_12

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    move/from16 v30, v0

    if-lez v8, :cond_4

    if-gez v30, :cond_4

    if-eqz v12, :cond_e

    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v0, v30

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_4
    :goto_4
    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v0, v8, :cond_10

    if-nez v20, :cond_5

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    :cond_5
    if-nez v17, :cond_6

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v29

    if-eqz v10, :cond_9

    move/from16 v0, v29

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    if-eqz v11, :cond_7

    add-int/lit8 v32, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    :cond_7
    if-nez v5, :cond_8

    add-int v32, v16, v21

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_f

    add-int/lit8 v32, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    add-int v32, v16, v21

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_f

    :cond_8
    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v32, v29, v9

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_9
    :goto_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_e
    if-eqz v10, :cond_4

    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->right:I

    neg-int v0, v9

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->left:I

    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    :cond_f
    if-eqz v15, :cond_9

    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v32, v29, v9

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    move/from16 v33, v0

    add-int v25, v32, v33

    if-eqz v11, :cond_11

    add-int v32, v16, v8

    move/from16 v0, v32

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    move/from16 v0, v25

    move/from16 v1, v29

    if-le v0, v1, :cond_11

    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v25

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_11
    :goto_7
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    move/from16 v30, v0

    if-lez v8, :cond_13

    if-eqz v12, :cond_13

    move/from16 v0, v30

    iput v0, v6, Landroid/graphics/Rect;->left:I

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_13
    if-eqz v12, :cond_18

    const/16 v31, 0x1

    :goto_8
    move/from16 v21, v31

    :goto_9
    move/from16 v0, v21

    if-ge v0, v8, :cond_1a

    if-nez v20, :cond_14

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_17

    :cond_14
    if-nez v17, :cond_15

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_17

    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v13, :cond_17

    if-nez v5, :cond_16

    add-int v32, v16, v21

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_19

    add-int/lit8 v32, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_16

    add-int v32, v16, v21

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_19

    :cond_16
    sub-int v32, v23, v9

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v32, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_17
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    :cond_18
    const/16 v31, 0x0

    goto :goto_8

    :cond_19
    if-eqz v15, :cond_17

    sub-int v32, v23, v9

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    :cond_1a
    if-lez v8, :cond_11

    if-lez v30, :cond_11

    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iput v3, v6, Landroid/graphics/Rect;->left:I

    add-int v32, v3, v30

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    :cond_1b
    if-eqz v10, :cond_11

    move/from16 v0, v24

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v32, v24, v9

    move/from16 v0, v32

    iput v0, v6, Landroid/graphics/Rect;->right:I

    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingActive:Z

    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    if-ge v0, v1, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    if-ge v0, v1, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method fillGap(Z)V
    .locals 6

    const/16 v5, 0x22

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getListPaddingLeft()I

    move-result v1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    :goto_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooHigh(I)V

    :goto_1
    return-void

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getListPaddingRight()I

    move-result v2

    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    :goto_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x11

    if-ne p1, v2, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_0

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    :cond_2
    return v0

    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_4

    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCheckedItemIds()[J

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v5, v3, [J

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v2, v1

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    if-eq v2, v3, :cond_0

    new-array v6, v2, [J

    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    goto :goto_0

    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    :goto_1
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_6

    :cond_2
    move v4, v6

    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_3
    sub-int v3, v7, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_3

    :cond_7
    move v4, v6

    goto :goto_2

    :cond_8
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 36

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-nez v14, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    move/from16 v34, v0

    sub-int v3, v3, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v8, v3, v34

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v16

    const/16 v25, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v26, 0x0

    const/4 v5, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    packed-switch v3, :pswitch_data_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v34, v0

    sub-int v25, v3, v34

    if-ltz v25, :cond_2

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v34, v0

    sub-int v6, v3, v34

    :cond_3
    add-int v3, v25, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->handleDataChanged()V

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v14, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v34, v0

    sub-int v25, v3, v34

    if-ltz v25, :cond_4

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/widget/ListAdapter;->getCount()I

    move-result v34

    move/from16 v0, v34

    if-eq v3, v0, :cond_8

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getId()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ") with Adapter("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    if-nez v14, :cond_7

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :cond_7
    throw v3

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v32

    if-eqz v32, :cond_a

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_a

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    move-object v12, v10

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    move-object/from16 v29, v0

    const/16 v19, 0x0

    if-eqz v17, :cond_c

    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v34, v18, v24

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v13

    goto :goto_2

    :cond_c
    move-object/from16 v0, v29

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->fillActiveViews(II)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_10

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    move-object/from16 v19, v23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestFocus()Z

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->detachAllViewsFromParent()V

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    packed-switch v3, :pswitch_data_1

    if-nez v16, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1a

    const/4 v3, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v31

    :goto_4
    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v31, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_12
    const/16 v21, 0x1

    :goto_5
    if-nez v21, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_13

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->clearFocus()V

    :cond_13
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    :goto_6
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    :cond_14
    :goto_7
    if-eqz v12, :cond_27

    invoke-virtual {v12}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v28

    if-eqz v11, :cond_26

    if-eqz v28, :cond_26

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v33

    const/16 v3, 0x40

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_15
    :goto_8
    if-eqz v20, :cond_16

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->onFinishTemporaryDetach()V

    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkSelectionChanged()V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v14, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_2
    if-eqz v5, :cond_19

    :try_start_4
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v31

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_4

    :pswitch_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v31

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->reconcileSelectedPosition()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v3, v0, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-nez v4, :cond_1c

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    goto :goto_9

    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v3, v0, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v26, :cond_1e

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :cond_1e
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLeft()I

    move-result v7

    goto :goto_a

    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v31

    goto/16 :goto_4

    :cond_20
    const/16 v21, 0x0

    goto/16 :goto_5

    :cond_21
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_6

    :cond_22
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_6

    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-lez v3, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v3, v0, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v34, v0

    sub-int v3, v3, v34

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    :cond_24
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v20, :cond_14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    :cond_25
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_b

    :cond_26
    invoke-virtual {v12}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_8

    :cond_27
    const/4 v3, -0x1

    if-eq v13, v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, v13, v3

    const/16 v34, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_15

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    if-eqz p2, :cond_2

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 12

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v9, v10, v11

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    :goto_1
    const/4 v6, 0x0

    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    :cond_2
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->recycleOnMeasure()Z

    move-result v8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    move v4, p2

    :goto_2
    if-gt v4, p3, :cond_9

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    if-lez v4, :cond_3

    add-int/2addr v9, v3

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    move v6, v9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    move v6, v9

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->removeAllViews()V

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15

    invoke-super/range {p0 .. p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v13

    iget v14, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->layoutChildren()V

    :cond_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const v9, 0x7fffffff

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_3

    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    if-ge v6, v9, :cond_1

    move v9, v6

    move v5, v8

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    :cond_3
    if-ltz v5, :cond_4

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v12, :cond_0

    if-nez v10, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v2, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->combineMeasuredStates(II)I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_1
    if-nez v10, :cond_5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v11, v0, v1

    :goto_1
    if-nez v12, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    :cond_2
    const/high16 v0, -0x8000

    if-ne v12, v0, :cond_3

    move-object v0, p0

    move v1, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    :cond_3
    invoke-virtual {p0, v4, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setMeasuredDimension(II)V

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mHeightMeasureSpec:I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_5
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v11, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v0, v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    sub-int v6, p1, v6

    sub-int v6, v1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v5, v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    if-nez v5, :cond_0

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    invoke-virtual {v5, v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->setup(II)Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onWindowFocusChanged(Z)V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->logActivity()V

    :cond_0
    return-void
.end method

.method pageScroll(I)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->logActivity()V

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/16 v5, 0x11

    if-ne p1, v5, :cond_5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_6

    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    if-eqz v2, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_2

    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    :cond_4
    :goto_1
    return v3

    :cond_5
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getScrollX()I

    move-result v6

    add-int v7, v6, v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->showingLeftFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v8, v4, :cond_1

    :cond_0
    add-int/2addr v6, v4

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->showingRightFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v14, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v4

    if-ge v13, v14, :cond_3

    :cond_2
    sub-int/2addr v7, v4

    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-le v13, v6, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_6

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v6

    add-int/2addr v11, v13

    :goto_0
    sub-int v3, v9, v7

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_5

    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->scrollListItemsBy(I)V

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelectedLeft:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    :cond_5
    return v10

    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-ge v13, v6, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v13, v7, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_8

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v2, v5, v6

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    sub-int/2addr v11, v13

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetList()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resetList()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clear()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkFocus()V

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkSelectionChanged()V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_1

    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkFocus()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3

    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setCacheColorHint(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    :goto_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerIsOpaque:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    return-void

    :cond_2
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterDividersEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderDividersEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->stop()V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    goto :goto_0

    :cond_5
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->stop()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->layoutChildren()V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
