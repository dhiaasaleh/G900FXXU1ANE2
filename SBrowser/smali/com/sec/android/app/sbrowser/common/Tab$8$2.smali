.class Lcom/sec/android/app/sbrowser/common/Tab$8$2;
.super Landroid/os/AsyncTask;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab$8;->OnUpdateRecaptureSoftBitmapListener(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/Tab$8;

.field final synthetic val$fromPageLoadFinish:Z

.field final synthetic val$softBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab$8;Landroid/graphics/Bitmap;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$8$2;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$8;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab$8$2;->val$softBitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/Tab$8$2;->val$fromPageLoadFinish:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$8$2;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$8;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$8$2;->val$softBitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$8$2;->val$fromPageLoadFinish:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->UpdateReCaptureSoftBitmap(Landroid/graphics/Bitmap;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$8$2;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
