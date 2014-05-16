.class public Lcom/sec/android/touchwiz/app/TwTabActivity;
.super Landroid/app/ActivityGroup;
.source "TwTabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTabIndex:I

    return-void
.end method

.method private ensureTwTabHost()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-nez v0, :cond_0

    const v0, 0x2030008

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/app/TwTabActivity;->setContentView(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwTabActivity;->ensureTwTabHost()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/app/TwTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/app/TwTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwTabHost;

    iput-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TwTabHost whose id attribute is \'android.R.id.TwTabHost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/app/TwTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setup(Landroid/app/LocalActivityManager;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwTabActivity;->ensureTwTabHost()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwTabActivity;->ensureTwTabHost()V

    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v2, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget v2, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    iput p1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTabIndex:I

    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/app/TwTabActivity;->mDefaultTabIndex:I

    return-void
.end method
