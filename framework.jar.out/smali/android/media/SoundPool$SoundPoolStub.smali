.class Landroid/media/SoundPool$SoundPoolStub;
.super Ljava/lang/Object;
.source "SoundPool.java"

# interfaces
.implements Landroid/media/SoundPool$SoundPoolDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoundPoolStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autoPause()V
    .locals 0

    return-void
.end method

.method public final autoResume()V
    .locals 0

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final pause(I)V
    .locals 0

    return-void
.end method

.method public final play(IFFIIF)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final resume(I)V
    .locals 0

    return-void
.end method

.method public final setLoop(II)V
    .locals 0

    return-void
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 0

    return-void
.end method

.method public final setPriority(II)V
    .locals 0

    return-void
.end method

.method public final setRate(IF)V
    .locals 0

    return-void
.end method

.method public final setStreamType(I)V
    .locals 0

    return-void
.end method

.method public setVolume(IF)V
    .locals 0

    return-void
.end method

.method public final setVolume(IFF)V
    .locals 0

    return-void
.end method

.method public final stop(I)V
    .locals 0

    return-void
.end method

.method public final unload(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
