.class Lim/doit/pro/utils/AlertDialogUtils$14;
.super Ljava/lang/Object;
.source "AlertDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/AlertDialogUtils;->showLinkEvernoteDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/utils/AlertDialogUtils$14;->val$context:Landroid/content/Context;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 448
    if-nez p2, :cond_0

    .line 449
    iget-object v0, p0, Lim/doit/pro/utils/AlertDialogUtils$14;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->initEvernote(Landroid/content/Context;)V

    .line 450
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/utils/AlertDialogUtils$14;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/EvernoteSession;->authenticate(Landroid/content/Context;)V

    .line 455
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lim/doit/pro/utils/AlertDialogUtils$14;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->initYinXiangBiJi(Landroid/content/Context;)V

    .line 453
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/utils/AlertDialogUtils$14;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/EvernoteSession;->authenticate(Landroid/content/Context;)V

    goto :goto_0
.end method
