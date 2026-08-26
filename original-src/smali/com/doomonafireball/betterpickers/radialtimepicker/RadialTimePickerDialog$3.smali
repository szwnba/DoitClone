.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;
.super Ljava/lang/Object;
.source "RadialTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$2(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$3(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$4(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;Z)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$5(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$5(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    .line 280
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$6(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$6(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v3

    .line 279
    invoke-interface {v0, v1, v2, v3}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;II)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->dismiss()V

    .line 283
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$3;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->tryVibrate()V

    goto :goto_0
.end method
