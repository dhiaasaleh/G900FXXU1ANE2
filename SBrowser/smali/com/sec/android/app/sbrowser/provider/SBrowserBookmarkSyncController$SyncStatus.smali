.class public final enum Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;
.super Ljava/lang/Enum;
.source "SBrowserBookmarkSyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

.field public static final enum NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

.field public static final enum SYNC_STARTED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

.field public static final enum SYNC_STOPPED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    const-string v1, "SYNC_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->SYNC_STARTED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    const-string v1, "SYNC_STOPPED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->SYNC_STOPPED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->SYNC_STARTED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->SYNC_STOPPED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    return-object v0
.end method
