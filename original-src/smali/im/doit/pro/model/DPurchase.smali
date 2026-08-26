.class public Lim/doit/pro/model/DPurchase;
.super Lim/doit/pro/model/BaseEntity;
.source "DPurchase.java"


# static fields
.field private static final serialVersionUID:J = -0x1ceed9645666bbcdL


# instance fields
.field private outTradeNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tno"
    .end annotation
.end field

.field private purchaseData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "INAPP_PURCHASE_DATA"
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "INAPP_DATA_SIGNATURE"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutTradeNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/model/DPurchase;->outTradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/model/DPurchase;->purchaseData:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/model/DPurchase;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public setOutTradeNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "outTradeNo"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lim/doit/pro/model/DPurchase;->outTradeNo:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPurchaseData(Ljava/lang/String;)V
    .locals 0
    .param p1, "purchaseData"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lim/doit/pro/model/DPurchase;->purchaseData:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lim/doit/pro/model/DPurchase;->signature:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DPurchase [purchaseData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/DPurchase;->purchaseData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lim/doit/pro/model/DPurchase;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outTradeNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/DPurchase;->outTradeNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/DPurchase;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/DPurchase;->created:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/DPurchase;->updated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    iget-wide v2, p0, Lim/doit/pro/model/DPurchase;->usn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
