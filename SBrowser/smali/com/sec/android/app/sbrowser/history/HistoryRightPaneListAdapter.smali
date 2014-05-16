.class public Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryRightPaneListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryRightPaneListAdapter"


# instance fields
.field mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

.field private mSelectedGroup:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    return-void
.end method


# virtual methods
.method public buildMap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->buildMap()V

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    iget v1, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mSelectedGroup:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedGroup()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mSelectedGroup:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mHistoryExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    iget v1, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mSelectedGroup:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setSelectedGroup(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mSelectedGroup:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateChildList(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->mSelectedGroup:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->setSelectedGroup(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->notifyDataSetChanged()V

    return-void
.end method
