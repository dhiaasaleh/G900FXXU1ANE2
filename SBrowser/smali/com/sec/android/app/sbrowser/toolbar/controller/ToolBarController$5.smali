.class Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$5;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->reSetDefaultPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$500(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->mReSetDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->access$502(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
