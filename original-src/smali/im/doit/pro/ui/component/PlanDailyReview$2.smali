.class Lim/doit/pro/ui/component/PlanDailyReview$2;
.super Ljava/lang/Object;
.source "PlanDailyReview.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/PlanDailyReview;->initDialogListener(Lim/doit/pro/ui/component/DMessageDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/PlanDailyReview;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/PlanDailyReview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/PlanDailyReview$2;->this$0:Lim/doit/pro/ui/component/PlanDailyReview;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lim/doit/pro/ui/component/PlanDailyReview$2;->this$0:Lim/doit/pro/ui/component/PlanDailyReview;

    invoke-static {v0}, Lim/doit/pro/ui/component/PlanDailyReview;->access$1(Lim/doit/pro/ui/component/PlanDailyReview;)V

    .line 104
    return-void
.end method
