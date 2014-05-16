.class public Lcom/android/settings/quicklaunch/QuickLaunchSettings;
.super Landroid/preference/PreferenceActivity;
.source "QuickLaunchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

.field private mBookmarksCursor:Landroid/database/Cursor;

.field private mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

.field private mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

.field private mClearDialogShortcut:C

.field private mShortcutGroup:Landroid/preference/PreferenceGroup;

.field private mShortcutToPreference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/quicklaunch/ShortcutPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/quicklaunch/QuickLaunchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    return-void
.end method

.method private clearShortcut(C)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;-><init>(Landroid/content/Context;C)V

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private getOrCreatePreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;
    .locals 4

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "QuickLaunchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating preference anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-result-object v0

    goto :goto_0
.end method

.method private initShortcutPreferences()V
    .locals 5

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v4, -0x1

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private declared-synchronized refreshShortcuts()V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "QuickLaunchSettings"

    const-string v14, "Could not requery cursor when refreshing shortcuts."

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-char v13, v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getOrCreatePreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v12

    const-string v13, "intent"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    const/4 v13, 0x0

    :try_start_3
    invoke-static {v6, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v12

    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v10, v12}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v13, 0x7f090888

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    const/4 v13, 0x1

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v8, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    :goto_3
    if-ltz v2, :cond_6

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    int-to-char v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-eqz v10, :cond_5

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method private showClearDialog(Lcom/android/settings/quicklaunch/ShortcutPreference;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->hasBookmark()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateShortcut(CLandroid/content/Intent;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@quicklaunch"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-nez p3, :cond_1

    const-string v1, "QuickLaunchSettings"

    const-string v2, "Result from bookmark picker does not have an intent."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "com.android.settings.quicklaunch.SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->updateShortcut(CLandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->clearShortcut(C)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->addPreferencesFromResource(I)V

    const-string v0, "shortcut_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;-><init>(Lcom/android/settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->initShortcutPreferences()V

    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090889

    invoke-virtual {p0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09088a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09088b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09088c

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    instance-of v1, v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->showClearDialog(Lcom/android/settings/quicklaunch/ShortcutPreference;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x1

    instance-of v1, p2, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p2, Lcom/android/settings/quicklaunch/ShortcutPreference;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.android.settings.quicklaunch.SHORTCUT"

    invoke-virtual {p2}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    const v1, 0x7f09088a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
