.class public Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;
.super Landroid/view/View;
.source "ParticleEffect.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private dotMaxLimit:I

.field private dotUnlockSpeed:I

.field private drawingBottom:I

.field private drawingDelayTime:I

.field private drawingLeft:I

.field private drawingMargin:I

.field private drawingRight:I

.field private drawingTop:I

.field private hsvOrigin:[F

.field private hsvTemp:[F

.field private initCreatedDotAmount:I

.field private isDrawing:Z

.field private lastAddedColor:I

.field private lastAddedX:F

.field private lastAddedY:F

.field mHandler:Landroid/os/Handler;

.field private nextParticleIndex:I

.field private particleAliveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/visualeffect/particlespace/particle/Particle;",
            ">;"
        }
    .end annotation
.end field

.field private particleTotalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/visualeffect/particlespace/particle/Particle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v2, "VisualEffectParticleEffect"

    iput-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleTotalList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingDelayTime:I

    const/16 v2, 0xfa

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->initCreatedDotAmount:I

    const/16 v2, 0x96

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotMaxLimit:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotUnlockSpeed:I

    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedX:F

    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedY:F

    iput v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedColor:I

    iput v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingLeft:I

    iput v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingTop:I

    iput v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingRight:I

    iput v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingBottom:I

    const/16 v2, 0xb

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingMargin:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->nextParticleIndex:I

    new-instance v2, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;

    invoke-direct {v2, p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;-><init>(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)V

    iput-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->mHandler:Landroid/os/Handler;

    new-array v2, v6, [F

    iput-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvOrigin:[F

    new-array v2, v6, [F

    iput-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvTemp:[F

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->initCreatedDotAmount:I

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;

    invoke-direct {v0}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;-><init>()V

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleTotalList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isAvailableRect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingMargin:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingTop:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingRight:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingBottom:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingDelayTime:I

    return v0
.end method

.method private getNextDot()Lcom/sec/android/visualeffect/particlespace/particle/Particle;
    .locals 2

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->nextParticleIndex:I

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->initCreatedDotAmount:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->nextParticleIndex:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleTotalList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->nextParticleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->nextParticleIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAvailableRect()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingLeft:I

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingRight:I

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingTop:I

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingBottom:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingLeft:I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingRight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingTop:I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingBottom:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startDrawing()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopDrawing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z

    return-void
.end method


# virtual methods
.method public addDots(IFFI)V
    .locals 15

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v5, v5, p1

    iget v6, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotMaxLimit:I

    if-le v5, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedX:F

    move/from16 v0, p3

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedY:F

    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedColor:I

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvOrigin:[F

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 v3, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v3, v0, :cond_1

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvTemp:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvOrigin:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvTemp:[F

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvOrigin:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvTemp:[F

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvOrigin:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvTemp:[F

    const/4 v6, 0x1

    aget v7, v5, v6

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0

    const-wide v11, 0x3fe6666666666666L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvTemp:[F

    const/4 v6, 0x2

    aget v7, v5, v6

    float-to-double v7, v7

    const/high16 v9, 0x3f80

    iget-object v10, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvTemp:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->hsvTemp:[F

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->getNextDot()Lcom/sec/android/visualeffect/particlespace/particle/Particle;

    move-result-object v2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v4}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->initialize(FFI)V

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->startDrawing()V

    goto/16 :goto_0
.end method

.method public clearEffect()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->stopDrawing()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->invalidate()V

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->stopDrawing()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/visualeffect/particlespace/particle/Particle;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->move()V

    invoke-virtual {v1, p1}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->getRight()I

    move-result v4

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->getTop()I

    move-result v6

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->getBottom()I

    move-result v0

    iget v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingLeft:I

    if-gt v7, v3, :cond_2

    if-nez v2, :cond_6

    :cond_2
    :goto_1
    iput v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingLeft:I

    iget v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingTop:I

    if-gt v7, v6, :cond_3

    if-nez v2, :cond_7

    :cond_3
    :goto_2
    iput v6, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingTop:I

    iget v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingRight:I

    if-lt v7, v4, :cond_4

    if-nez v2, :cond_8

    :cond_4
    :goto_3
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingRight:I

    iget v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingBottom:I

    if-lt v7, v0, :cond_5

    if-nez v2, :cond_9

    :cond_5
    :goto_4
    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingBottom:I

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingLeft:I

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingTop:I

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingRight:I

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingBottom:I

    goto :goto_4

    :cond_a
    iget-object v7, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_5
.end method

.method public unlockDots()V
    .locals 5

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotMaxLimit:I

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v2, v3

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedX:F

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedY:F

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->lastAddedColor:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->addDots(IFFI)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleAliveList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/visualeffect/particlespace/particle/Particle;

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotUnlockSpeed:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->unlock(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
