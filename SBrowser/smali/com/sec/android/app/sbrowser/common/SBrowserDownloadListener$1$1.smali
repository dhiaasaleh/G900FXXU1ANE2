.class Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1$1;
.super Ljava/lang/Object;
.source "SBrowserDownloadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserDownloadListener$1;->val$ctx:Landroid/content/Context;

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
