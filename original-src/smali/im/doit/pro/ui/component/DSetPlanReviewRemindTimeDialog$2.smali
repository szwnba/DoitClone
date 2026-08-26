.class Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$2;
.super Ljava/lang/Object;
.source "DSetPlanReviewRemindTimeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$2;->this$0:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$2;->this$0:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->access$0(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$2;->this$0:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->access$1(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 95
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$2;->this$0:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->access$2(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V

    .line 96
    iget-object v0, p0, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$2;->this$0:Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->access$3(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;)V

    .line 97
    return-void
.end method
