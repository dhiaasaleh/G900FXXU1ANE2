.class Lcom/android/incallui/CallButtonFragment$5;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$5;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$5;->this$0:Lcom/android/incallui/CallButtonFragment;

    #calls: Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V
    invoke-static {v0}, Lcom/android/incallui/CallButtonFragment;->access$000(Lcom/android/incallui/CallButtonFragment;)V

    return-void
.end method
