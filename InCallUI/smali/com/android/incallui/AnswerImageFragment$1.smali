.class Lcom/android/incallui/AnswerImageFragment$1;
.super Ljava/lang/Object;
.source "AnswerImageFragment.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerImageFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerImageFragment$1;->this$0:Lcom/android/incallui/AnswerImageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$1;->this$0:Lcom/android/incallui/AnswerImageFragment;

    #getter for: Lcom/android/incallui/AnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerImageFragment;->access$000(Lcom/android/incallui/AnswerImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$1;->this$0:Lcom/android/incallui/AnswerImageFragment;

    #getter for: Lcom/android/incallui/AnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerImageFragment;->access$000(Lcom/android/incallui/AnswerImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopAirMotion()V

    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$1;->this$0:Lcom/android/incallui/AnswerImageFragment;

    const-string v1, "onDrawerOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AnswerImageFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$1;->this$0:Lcom/android/incallui/AnswerImageFragment;

    iget-object v1, p0, Lcom/android/incallui/AnswerImageFragment$1;->this$0:Lcom/android/incallui/AnswerImageFragment;

    #getter for: Lcom/android/incallui/AnswerImageFragment;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v1}, Lcom/android/incallui/AnswerImageFragment;->access$100(Lcom/android/incallui/AnswerImageFragment;)Landroid/widget/SlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/incallui/AnswerImageFragment;->setDescription(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/AnswerImageFragment;->access$200(Lcom/android/incallui/AnswerImageFragment;Landroid/view/View;Z)V

    return-void
.end method
