.class Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;
.super Ljava/lang/Object;
.source "AutofillFormDeleteXlargeUI.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->Initialise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 7

    const v6, 0x7f0a02d4

    const v5, 0x7f0a00bc

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getMenu()Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iput-boolean v3, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->selectAllChecked:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->profilelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    aput-boolean v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget v2, v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getMenu()Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->profilelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    aput-boolean v4, v2, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iput v4, v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iput-boolean v4, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->selectAllChecked:Z

    goto :goto_1
.end method
