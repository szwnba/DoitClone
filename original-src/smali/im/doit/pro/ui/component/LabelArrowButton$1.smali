.class Lim/doit/pro/ui/component/LabelArrowButton$1;
.super Ljava/lang/Object;
.source "LabelArrowButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/LabelArrowButton;->registerListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/LabelArrowButton;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/LabelArrowButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelArrowButton$1;->this$0:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton$1;->this$0:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LabelArrowButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton$1;->this$0:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-static {v0}, Lim/doit/pro/ui/component/LabelArrowButton;->access$0(Lim/doit/pro/ui/component/LabelArrowButton;)Lim/doit/pro/activity/listener/OnLayoutClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton$1;->this$0:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-static {v0}, Lim/doit/pro/ui/component/LabelArrowButton;->access$0(Lim/doit/pro/ui/component/LabelArrowButton;)Lim/doit/pro/activity/listener/OnLayoutClickListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/LabelArrowButton$1;->this$0:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-interface {v0, v1}, Lim/doit/pro/activity/listener/OnLayoutClickListener;->click(Landroid/view/View;)V

    goto :goto_0
.end method
