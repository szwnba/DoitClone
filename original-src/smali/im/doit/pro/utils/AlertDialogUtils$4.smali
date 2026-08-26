.class Lim/doit/pro/utils/AlertDialogUtils$4;
.super Ljava/lang/Object;
.source "AlertDialogUtils.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/AlertDialogUtils;->showCurrentVersionIsNewestDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialog:Lim/doit/pro/ui/component/DMessageDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/DMessageDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/utils/AlertDialogUtils$4;->val$dialog:Lim/doit/pro/ui/component/DMessageDialog;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lim/doit/pro/utils/AlertDialogUtils$4;->val$dialog:Lim/doit/pro/ui/component/DMessageDialog;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/DMessageDialog;->dismissAllowingStateLoss()V

    .line 153
    return-void
.end method
