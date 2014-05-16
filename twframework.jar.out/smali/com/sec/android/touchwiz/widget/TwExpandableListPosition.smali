.class Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
.super Ljava/lang/Object;
.source "TwExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .locals 4

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->resetState()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;-><init>()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .locals 1

    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    iput p0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    iput p1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    iput p3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    return-object v0
.end method

.method static obtainChildPosition(II)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .locals 4

    const/4 v3, 0x1

    const-wide v1, 0xffffffffL

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-static {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v3, :cond_1

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    invoke-static {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    goto :goto_0
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
