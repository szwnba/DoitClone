.class Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterYearlyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDownClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getYearly()Lim/doit/pro/model/RepeaterYearly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterYearly;->getCycle()I

    move-result v0

    .line 140
    .local v0, "cycle":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 141
    const/16 v0, 0x9

    .line 145
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getYearly()Lim/doit/pro/model/RepeaterYearly;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/RepeaterYearly;->setCycle(I)V

    .line 146
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->access$1(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V

    .line 147
    return-void

    .line 143
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
