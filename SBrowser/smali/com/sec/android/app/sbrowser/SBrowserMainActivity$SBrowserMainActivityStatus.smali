.class public final enum Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
.super Ljava/lang/Enum;
.source "SBrowserMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SBrowserMainActivityStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

.field public static final enum CREATED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

.field public static final enum DESTROYED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

.field public static final enum PAUSED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

.field public static final enum RESUMED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

.field public static final enum STARTED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

.field public static final enum STOPPED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->CREATED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->STARTED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->RESUMED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->PAUSED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->STOPPED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    const-string v1, "DESTROYED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->DESTROYED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->CREATED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->STARTED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->RESUMED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->PAUSED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->STOPPED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->DESTROYED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    return-object v0
.end method
