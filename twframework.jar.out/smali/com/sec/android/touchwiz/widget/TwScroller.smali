.class public Lcom/sec/android/touchwiz/widget/TwScroller;
.super Ljava/lang/Object;
.source "TwScroller.java"


# static fields
.field private static ALPHA:F = 0.0f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v13, 0x64

    const/high16 v12, 0x3f80

    const-wide/high16 v8, 0x3fe8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lcom/sec/android/touchwiz/widget/TwScroller;->DECELERATION_RATE:F

    const/high16 v8, 0x4448

    sput v8, Lcom/sec/android/touchwiz/widget/TwScroller;->ALPHA:F

    const v8, 0x3ecccccd

    sput v8, Lcom/sec/android/touchwiz/widget/TwScroller;->START_TENSION:F

    sget v8, Lcom/sec/android/touchwiz/widget/TwScroller;->START_TENSION:F

    sub-float v8, v12, v8

    sput v8, Lcom/sec/android/touchwiz/widget/TwScroller;->END_TENSION:F

    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Lcom/sec/android/touchwiz/widget/TwScroller;->SPLINE:[F

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v13, :cond_2

    int-to-float v8, v2

    const/high16 v9, 0x42c8

    div-float v3, v8, v9

    const/high16 v6, 0x3f80

    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float v5, v7, v8

    const/high16 v8, 0x4040

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    sub-float v8, v12, v5

    sget v9, Lcom/sec/android/touchwiz/widget/TwScroller;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Lcom/sec/android/touchwiz/widget/TwScroller;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    sget-object v8, Lcom/sec/android/touchwiz/widget/TwScroller;->SPLINE:[F

    aput v1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/sec/android/touchwiz/widget/TwScroller;->SPLINE:[F

    aput v12, v8, v13

    const/high16 v8, 0x4100

    sput v8, Lcom/sec/android/touchwiz/widget/TwScroller;->sViscousFluidScale:F

    sput v12, Lcom/sec/android/touchwiz/widget/TwScroller;->sViscousFluidNormalize:F

    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwScroller;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Lcom/sec/android/touchwiz/widget/TwScroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mPpi:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeceleration:F

    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFlywheel:Z

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    const v0, 0x43c10b3d

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 4

    const/high16 v3, 0x3f80

    sget v1, Lcom/sec/android/touchwiz/widget/TwScroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    :goto_0
    sget v1, Lcom/sec/android/touchwiz/widget/TwScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    return p0

    :cond_0
    const v0, 0x3ebc5ab2

    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    const/4 v9, 0x1

    const/high16 v14, 0x42c8

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    if-eqz v10, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDuration:I

    if-ge v7, v10, :cond_3

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMode:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDurationReciprocal:F

    mul-float v8, v10, v11

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_2

    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwScroller;->viscousFluid(F)F

    move-result v8

    :goto_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeltaX:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeltaY:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    mul-float v10, v14, v4

    float-to-int v3, v10

    int-to-float v10, v3

    div-float v5, v10, v14

    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    div-float v6, v10, v14

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwScroller;->SPLINE:[F

    aget v0, v10, v3

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwScroller;->SPLINE:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    sub-float v10, v4, v5

    sub-float v11, v6, v5

    div-float/2addr v10, v11

    sub-float v11, v1, v0

    mul-float/2addr v10, v11

    add-float v2, v0, v10

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    if-ne v10, v11, :cond_0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    goto/16 :goto_0

    :cond_3
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScroller;->timePassed()I

    move-result v0

    add-int v1, v0, p1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDuration:I

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDurationReciprocal:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFlywheel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScroller;->getCurrVelocity()F

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float v17, v5, v5

    mul-float v18, v6, v6

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    div-float v10, v5, v7

    div-float v11, v6, v7

    mul-float v13, v10, v12

    mul-float v14, v11, v12

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p4, v0

    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mMode:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    mul-int v17, p3, p3

    mul-int v18, p4, p4

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mVelocity:F

    sget v17, Lcom/sec/android/touchwiz/widget/TwScroller;->START_TENSION:F

    mul-float v17, v17, v16

    sget v18, Lcom/sec/android/touchwiz/widget/TwScroller;->ALPHA:F

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v17, 0x408f400000000000L

    sget v19, Lcom/sec/android/touchwiz/widget/TwScroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff0

    sub-double v19, v19, v21

    div-double v19, v8, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartTime:J

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_1

    const/high16 v3, 0x3f80

    :goto_0
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_2

    const/high16 v4, 0x3f80

    :goto_1
    sget v17, Lcom/sec/android/touchwiz/widget/TwScroller;->ALPHA:F

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sget v19, Lcom/sec/android/touchwiz/widget/TwScroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sget v21, Lcom/sec/android/touchwiz/widget/TwScroller;->DECELERATION_RATE:F

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff0

    sub-double v21, v21, v23

    div-double v19, v19, v21

    mul-double v19, v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v15, v0

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mMinX:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mMaxX:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mMinY:I

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mMaxY:I

    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMaxX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMinX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMaxY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMinY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    return-void

    :cond_1
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v3, v17, v16

    goto/16 :goto_0

    :cond_2
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v4, v17, v16

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mVelocity:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeltaX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeltaY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeceleration:F

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mMode:I

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinished:Z

    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartTime:J

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartX:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartY:I

    add-int v0, p1, p3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalX:I

    add-int v0, p2, p4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mFinalY:I

    int-to-float v0, p3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeltaX:F

    int-to-float v0, p4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDeltaY:F

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
