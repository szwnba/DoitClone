.class Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterWeeklyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDownClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterWeekly;->getCycle()I

    move-result v0

    .line 172
    .local v0, "cycle":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 173
    const/16 v0, 0x9

    .line 177
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/RepeaterWeekly;->setCycle(I)V

    .line 178
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$1(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V

    .line 179
    return-void

    .line 175
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
