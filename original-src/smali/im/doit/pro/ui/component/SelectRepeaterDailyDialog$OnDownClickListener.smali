.class Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterDailyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDownClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getDaily()Lim/doit/pro/model/RepeaterDaily;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterDaily;->getCycle()I

    move-result v0

    .line 134
    .local v0, "cycle":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 135
    const/16 v0, 0x3c

    .line 139
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getDaily()Lim/doit/pro/model/RepeaterDaily;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/RepeaterDaily;->setCycle(I)V

    .line 140
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnDownClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$1(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V

    .line 141
    return-void

    .line 137
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
