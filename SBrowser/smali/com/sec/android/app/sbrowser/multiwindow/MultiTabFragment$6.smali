.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;
.super Landroid/os/Handler;
.source "MultiTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScrollYPosPerspective()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollToHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScrollYPos()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method
