.class public Lorg/chromium/content/browser/RenderCoordinates;
.super Ljava/lang/Object;
.source "RenderCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/RenderCoordinates$1;,
        Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;
    }
.end annotation


# instance fields
.field private mContentHeightCss:F

.field private mContentOffsetYPix:F

.field private mContentWidthCss:F

.field private mDeviceScaleFactor:F

.field private mLastFrameViewportHeightCss:F

.field private mLastFrameViewportWidthCss:F

.field private mMaxPageScaleFactor:F

.field private mMinPageScaleFactor:F

.field private mPageScaleFactor:F

.field private mScrollXCss:F

.field private mScrollYCss:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMinPageScaleFactor:F

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMaxPageScaleFactor:F

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/RenderCoordinates;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/RenderCoordinates;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/RenderCoordinates;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/RenderCoordinates;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/RenderCoordinates;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentOffsetYPix:F

    return v0
.end method


# virtual methods
.method public createNormalizedPoint()Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;-><init>(Lorg/chromium/content/browser/RenderCoordinates;Lorg/chromium/content/browser/RenderCoordinates$1;)V

    return-object v0
.end method

.method public fromDipToPix(F)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public fromLocalCssToPix(F)F
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public fromPixToDip(F)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    div-float v0, p1, v0

    return v0
.end method

.method public fromPixToLocalCss(F)F
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    iget v1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    mul-float/2addr v0, v1

    div-float v0, p1, v0

    return v0
.end method

.method public getContentHeightCss()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentHeightCss:F

    return v0
.end method

.method public getContentHeightPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentHeightCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getContentHeightPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContentOffsetYPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentOffsetYPix:F

    return v0
.end method

.method public getContentWidthCss()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentWidthCss:F

    return v0
.end method

.method public getContentWidthPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentWidthCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getContentWidthPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getDeviceScaleFactor()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    return v0
.end method

.method public getLastFrameViewportHeightCss()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportHeightCss:F

    return v0
.end method

.method public getLastFrameViewportHeightPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportHeightCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getLastFrameViewportHeightPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getLastFrameViewportWidthCss()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportWidthCss:F

    return v0
.end method

.method public getLastFrameViewportWidthPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportWidthCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getLastFrameViewportWidthPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMaxHorizontalScrollPix()F
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthPix()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPix()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getMaxHorizontalScrollPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxHorizontalScrollPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMaxPageScaleFactor()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMaxPageScaleFactor:F

    return v0
.end method

.method public getMaxVerticalScrollPix()F
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPix()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPix()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getMaxVerticalScrollPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxVerticalScrollPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMinPageScaleFactor()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMinPageScaleFactor:F

    return v0
.end method

.method public getPageScaleFactor()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    return v0
.end method

.method public getScrollX()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    return v0
.end method

.method public getScrollXPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getScrollXPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getScrollY()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    return v0
.end method

.method public getScrollYPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    return v0
.end method

.method public getScrollYPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public hasFixedPageScale()Z
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMinPageScaleFactor:F

    iget v1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMaxPageScaleFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    return-void
.end method

.method setDeviceScaleFactor(F)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mDeviceScaleFactor:F

    return-void
.end method

.method updateContentSizeCss(FF)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentWidthCss:F

    iput p2, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentHeightCss:F

    return-void
.end method

.method updateFrameInfo(FFFFFFFFFF)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollXCss:F

    iput p2, p0, Lorg/chromium/content/browser/RenderCoordinates;->mScrollYCss:F

    iput p7, p0, Lorg/chromium/content/browser/RenderCoordinates;->mPageScaleFactor:F

    iput p8, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMinPageScaleFactor:F

    iput p9, p0, Lorg/chromium/content/browser/RenderCoordinates;->mMaxPageScaleFactor:F

    iput p10, p0, Lorg/chromium/content/browser/RenderCoordinates;->mContentOffsetYPix:F

    invoke-virtual {p0, p3, p4}, Lorg/chromium/content/browser/RenderCoordinates;->updateContentSizeCss(FF)V

    iput p5, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportWidthCss:F

    iput p6, p0, Lorg/chromium/content/browser/RenderCoordinates;->mLastFrameViewportHeightCss:F

    return-void
.end method
