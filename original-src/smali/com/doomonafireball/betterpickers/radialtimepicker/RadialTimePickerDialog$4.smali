.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$4;
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
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$4;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$4;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-virtual {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->tryVibrate()V

    .line 304
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$4;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$6(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v0

    .line 305
    .local v0, "amOrPm":I
    if-nez v0, :cond_1

    .line 306
    const/4 v0, 0x1

    .line 310
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$4;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v1, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$7(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;I)V

    .line 311
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$4;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$6(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->setAmOrPm(I)V

    .line 312
    return-void

    .line 307
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    const/4 v0, 0x0

    goto :goto_0
.end method
