import json
import glob
import pandas as pd

files = glob.glob("../results/*.json")
rows = []

for f in files:
    with open(f) as fp:
        data = json.load(fp)
        for task, metrics in data["results"].items():
            rows.append({
                "model": f.split("/")[-1].replace(".json", ""),
                "task": task,
                "accuracy": metrics.get("acc", None),
                "f1": metrics.get("f1", None),
            })

df = pd.DataFrame(rows)
df.to_csv("../results/summary.csv", index=False)
print("Saved ../results/summary.csv")
