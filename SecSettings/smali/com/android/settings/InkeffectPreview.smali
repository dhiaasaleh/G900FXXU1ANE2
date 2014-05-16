.class public Lcom/android/settings/InkeffectPreview;
.super Landroid/app/Activity;
.source "InkeffectPreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mInkcolorItem:[Ljava/lang/String;


# instance fields
.field private bClick:Z

.field private bRotation:Z

.field private clickInkColor:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInkEffectColor:I

.field private mInkEffectHelptext:Landroid/widget/TextView;

.field mInkEffectdrawble:[I

.field mInkEffectdrawble_h:[I

.field private mListView:Landroid/widget/ListView;

.field private productModel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x9

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    iput v0, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->productModel:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x36t 0x3t 0x2t 0x7ft
        0x3at 0x3t 0x2t 0x7ft
        0x38t 0x3t 0x2t 0x7ft
        0x30t 0x3t 0x2t 0x7ft
        0x2ct 0x3t 0x2t 0x7ft
        0x34t 0x3t 0x2t 0x7ft
        0x3ct 0x3t 0x2t 0x7ft
        0x2et 0x3t 0x2t 0x7ft
        0x32t 0x3t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x37t 0x3t 0x2t 0x7ft
        0x3bt 0x3t 0x2t 0x7ft
        0x39t 0x3t 0x2t 0x7ft
        0x31t 0x3t 0x2t 0x7ft
        0x2dt 0x3t 0x2t 0x7ft
        0x35t 0x3t 0x2t 0x7ft
        0x3dt 0x3t 0x2t 0x7ft
        0x2ft 0x3t 0x2t 0x7ft
        0x33t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method private updateInkColorList()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v1, 0x7f0400f4

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->setContentView(I)V

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09139d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09139e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0913a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0913a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0913a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0913a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0913a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0913a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0913a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-boolean v1, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    iput v1, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    :goto_0
    const v1, 0x7f0b00a9

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    iget v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    const v1, 0x7f0b025c

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectHelptext:Landroid/widget/TextView;

    const v1, 0x7f0b017d

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0400f5

    sget-object v4, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-boolean v1, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_2
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0243

    invoke-virtual {p0, v1}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    iget v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_ink_effect"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    invoke-direct {p0}, Lcom/android/settings/InkeffectPreview;->updateInkColorList()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/InkeffectPreview;->updateInkColorList()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0906f4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    const-string v1, "InkeffectPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    iput p3, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InkeffectPreview"

    const-string v2, "could not persist preview setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0118
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
