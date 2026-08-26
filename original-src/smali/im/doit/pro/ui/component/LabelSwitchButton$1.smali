.class Lim/doit/pro/ui/component/LabelSwitchButton$1;
.super Ljava/lang/Object;
.source "LabelSwitchButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/LabelSwitchButton;->registerListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/LabelSwitchButton;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/LabelSwitchButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelSwitchButton$1;->this$0:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton$1;->this$0:Lim/doit/pro/ui/component/LabelSwitchButton;

    invoke-static {v0}, Lim/doit/pro/ui/component/LabelSwitchButton;->access$0(Lim/doit/pro/ui/component/LabelSwitchButton;)Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton$1;->this$0:Lim/doit/pro/ui/component/LabelSwitchButton;

    invoke-static {v0}, Lim/doit/pro/ui/component/LabelSwitchButton;->access$0(Lim/doit/pro/ui/component/LabelSwitchButton;)Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    move-result-object v0

    .line 103
    invoke-interface {v0, p1, p2}, Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;->onChange(Landroid/widget/CompoundButton;Z)V

    .line 105
    :cond_0
    return-void
.end method
