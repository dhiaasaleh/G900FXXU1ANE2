.class Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;->this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;->this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v0, v0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-instance v1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;->this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v2, v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;->this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v3, v3, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;->this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v4, v4, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;
    invoke-static {v0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$502(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;->this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v0, v0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$500(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
