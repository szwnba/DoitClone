.class Lim/doit/pro/utils/AlertDialogUtils$13;
.super Ljava/lang/Object;
.source "AlertDialogUtils.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/AlertDialogUtils;->showEvernoteReAuthDialog(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lim/doit/pro/utils/AlertDialogUtils$13;->val$activity:Landroid/app/Activity;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 435
    iget-object v0, p0, Lim/doit/pro/utils/AlertDialogUtils$13;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showLinkEvernoteDialog(Landroid/content/Context;)V

    .line 436
    return-void
.end method
