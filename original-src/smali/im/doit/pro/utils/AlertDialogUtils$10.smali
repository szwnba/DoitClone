.class Lim/doit/pro/utils/AlertDialogUtils$10;
.super Ljava/lang/Object;
.source "AlertDialogUtils.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/AlertDialogUtils;->showMakeGoalCompleteDialog(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$l:Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/utils/AlertDialogUtils$10;->val$l:Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    iget-object v0, p0, Lim/doit/pro/utils/AlertDialogUtils$10;->val$l:Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;->click(Z)V

    .line 367
    return-void
.end method
