.class Lcom/android/settings/toolbox/ToolboxMenu$2;
.super Ljava/lang/Object;
.source "ToolboxMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/toolbox/ToolboxMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/toolbox/ToolboxMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/toolbox/ToolboxMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxMenu$2;->this$0:Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "edit_direct"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu$2;->this$0:Lcom/android/settings/toolbox/ToolboxMenu;

    #getter for: Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/toolbox/ToolboxMenu;->access$100(Lcom/android/settings/toolbox/ToolboxMenu;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu$2;->this$0:Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-virtual {v1}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    const-string v1, "edit_value"

    const-string v3, "apps"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu$2;->this$0:Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-virtual {v1}, Lcom/android/settings/toolbox/ToolboxMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-string v1, "com.android.settings.toolbox.ToolboxList"

    const v3, 0x7f09171a

    const-string v4, ""

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxMenu$2;->this$0:Lcom/android/settings/toolbox/ToolboxMenu;

    #getter for: Lcom/android/settings/toolbox/ToolboxMenu;->mFragment:Landroid/app/Fragment;
    invoke-static {v5}, Lcom/android/settings/toolbox/ToolboxMenu;->access$200(Lcom/android/settings/toolbox/ToolboxMenu;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    return-void
.end method
