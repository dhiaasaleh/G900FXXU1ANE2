.class public final enum Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;
.super Ljava/lang/Enum;
.source "KikinSelectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/content/sbrowser/KikinSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

.field public static final enum LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

.field public static final enum LONG_PRESS_ELSEWHERE:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

.field public static final enum RESTORE_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

.field public static final enum SELECTION_HANDLES:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

.field public static final enum SELECT_ALL:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

.field public static final enum UNKNOWN:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->UNKNOWN:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    const-string v1, "LONG_PRESS"

    invoke-direct {v0, v1, v4}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    const-string v1, "SELECTION_HANDLES"

    invoke-direct {v0, v1, v5}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->SELECTION_HANDLES:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    const-string v1, "SELECT_ALL"

    invoke-direct {v0, v1, v6}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->SELECT_ALL:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    const-string v1, "RESTORE_SELECTION"

    invoke-direct {v0, v1, v7}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->RESTORE_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    const-string v1, "LONG_PRESS_ELSEWHERE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS_ELSEWHERE:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->UNKNOWN:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->SELECTION_HANDLES:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->SELECT_ALL:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->RESTORE_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS_ELSEWHERE:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->$VALUES:[Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;
    .locals 1

    const-class v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    return-object v0
.end method

.method public static values()[Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;
    .locals 1

    sget-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->$VALUES:[Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-virtual {v0}, [Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    return-object v0
.end method
