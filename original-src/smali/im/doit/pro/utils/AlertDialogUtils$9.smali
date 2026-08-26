.class Lim/doit/pro/utils/AlertDialogUtils$9;
.super Ljava/lang/Object;
.source "AlertDialogUtils.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/AlertDialogUtils;->showPullGcalResultDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/utils/AlertDialogUtils$9;->val$activity:Landroid/app/Activity;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 327
    iget-object v1, p0, Lim/doit/pro/utils/AlertDialogUtils$9;->val$activity:Landroid/app/Activity;

    .line 328
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 329
    const-string v2, "DIALOG_TAG_GCAL_RESULT"

    .line 328
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 327
    check-cast v0, Lim/doit/pro/ui/component/DMessageDialog;

    .line 330
    .local v0, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lim/doit/pro/ui/component/DMessageDialog;->dismissAllowingStateLoss()V

    .line 333
    :cond_0
    return-void
.end method
