.class public final Landroid/media/MediaDrm$CryptoSession;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CryptoSession"
.end annotation


# instance fields
.field private mDrm:Landroid/media/MediaDrm;

.field private mSessionId:[B

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    iput-object p2, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    #calls: Landroid/media/MediaDrm;->setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    invoke-static {p2, p3, p4}, Landroid/media/MediaDrm;->access$200(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    #calls: Landroid/media/MediaDrm;->setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    invoke-static {p2, p3, p5}, Landroid/media/MediaDrm;->access$300(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #calls: Landroid/media/MediaDrm;->decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$500(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[B[B)[B
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #calls: Landroid/media/MediaDrm;->encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$400(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign([B[B)[B
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #calls: Landroid/media/MediaDrm;->signNative(Landroid/media/MediaDrm;[B[B[B)[B
    invoke-static {v0, v1, p1, p2}, Landroid/media/MediaDrm;->access$600(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public verify([B[B[B)Z
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #calls: Landroid/media/MediaDrm;->verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$700(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result v0

    return v0
.end method
